function getTime()
  return os.time()
end

function getVersion()
  return os.version
end

function getLabel()
  return os.getComputerLabel()
end

function shutdown(doreboot)
    if doreboot == true then
        os.restart()
    else
        os.shutdown()
    end
end
