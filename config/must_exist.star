load("@ytt:assert", "assert")
load("@ytt:data", "data")

def dv_must_exist(data_value_key):
  value = data.values
  keys = data_value_key.split(".")
  for key in keys:
    value = getattr(value, key)
  end
  if len(value) == 0:
   assert.fail(data_value_key + " cannot be empty")
  end
  return value
end
