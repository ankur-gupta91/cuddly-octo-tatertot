class NeutronApiController < ApplicationController

  def download
     send_file(
         "/home/ankur/jenkins-ci/app/views/neutron_api/full.txt",
         type: "application/txt"
     )
  end

  def downloadlogs
     $dir = Dir.glob("/home/ankur/apishare/*").max_by {|f| File.mtime(f)};
     send_file(
         $dir + "/logs.zip",
         type: "application/zip"
     )
  end

  def downloadpreviousbuild
     $dir = params[:location]
     send_file(
         $dir + "/" + $dir.gsub(/\D/,'') + ".zip",
         type: "application/zip"
     )
  end

end
