#
# templates_custom
# Count the number of files under templates-custom
#

Facter.add('templates_custom') do
    confine osfamily: 'RedHat'
    setcode do
        tmp = Facter::Core::Execution.exec('find /etc/e-smith/templates-custom -type f | wc -l')
        tmp.to_i
    end
end
