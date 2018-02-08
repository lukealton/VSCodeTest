Describe 'CopyData' {
    Context 'Path Tests' {
       It 'Confirm the directory being copied is not copied again inside the destination path when the path exists' {
            CopyData -SourceDirectory .\Data -DestinationDirectory "C:\Data"
            $RecurviseCopy = "C:\Data\Data"
            $RecurviseCopy | Should Not Exist 
       }
    }
}