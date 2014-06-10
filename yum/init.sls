yum:
  cmd.run:
    - name: 'yum update -y'

devtools:
  cmd.run:
    - name: 'yum groupinstall "development tools" -y'
