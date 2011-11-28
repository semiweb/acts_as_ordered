module ActsAsOrdered
  def acts_as_ordered(column=nil, direction=nil)

    @acts_as_ordered = {}

    if column
      if self.column_names.include?(column.to_s)
        @acts_as_ordered[:column] = column
      else
        raise 'Invalid Acts as Ordered default column'
      end
    end

    if direction
      if %w(asc desc).include?(direction.to_s)
        @acts_as_ordered[:direction] = direction
      end
    end

    scope :ordered, lambda{|column=nil, direction=nil|
      column ||= @acts_as_ordered[:column]
      direction ||= @acts_as_ordered[:direction]

      if column
        if direction
          order("#{column} #{direction}")
        else
          order("#{column}")
        end
      end
    }
  end
end

class ActiveRecord::Base
  extend ActsAsOrdered
end
