.class Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "sdcardDirectory"

    .prologue
    const/4 v1, 0x0

    .line 724
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 725
    iput-boolean v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 726
    iput-boolean v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 727
    iput-object p2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 728
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 729
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 731
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ImportVCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 733
    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mUsePhoneStorage:Z
    invoke-static {p1}, Lcom/android/htccontacts/ImportVCardActivity;->access$1500(Lcom/android/htccontacts/ImportVCardActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    const-string v2, "/sdcard/ext_sd"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    const-string v2, "/mnt/sdcard/ext_sd"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_0
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 14
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 781
    iget-boolean v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_0

    .line 782
    new-instance v10, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v13}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    throw v10

    .line 786
    :cond_0
    const/4 v2, 0x0

    .line 787
    .local v2, count:I
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 788
    .local v6, files:[Ljava/io/File;
    if-nez v6, :cond_2

    .line 789
    const-string v10, "ImportVCardActivity"

    const-string v11, "directory.listFiles() returns null..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1
    return-void

    .line 793
    :cond_2
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, v0, v7

    .line 794
    .local v4, file:Ljava/io/File;
    iget-boolean v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_3

    .line 795
    new-instance v10, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v13}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;Lcom/android/htccontacts/ImportVCardActivity$1;)V

    throw v10

    .line 797
    :cond_3
    const/4 v1, 0x0

    .line 799
    .local v1, canonicalPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 804
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 793
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 800
    :catch_0
    move-exception v3

    .line 801
    .local v3, e:Ljava/util/NoSuchElementException;
    const-string v10, "ImportVCardActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getVCardFileRecursively(), got NoSuchElementException when calling file.getCanonicalPath(), file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 808
    .end local v3           #e:Ljava/util/NoSuchElementException;
    :cond_4
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 811
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    .line 820
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 812
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 814
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/htccontacts/VCardFile;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v5, v1, v10, v11}, Lcom/android/htccontacts/VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 817
    .local v9, vcardFile:Lcom/android/htccontacts/VCardFile;
    iget-object v10, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    const-string v10, "ImportVCardActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VCard file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 827
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 830
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 833
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 741
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/htccontacts/ImportVCardActivity;->access$1002(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 744
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    .line 745
    const-string v2, "ImportVCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vCard files found..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 751
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 754
    iget-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1002(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 758
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1600(Lcom/android/htccontacts/ImportVCardActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 760
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mProgressDialogForScanVCard:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2, v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1602(Lcom/android/htccontacts/ImportVCardActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 765
    :goto_1
    iget-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v2, :cond_2

    .line 766
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v5, 0x7f07000e

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 777
    :goto_2
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 748
    .end local v0           #e:Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v0

    .line 749
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 762
    :cond_1
    const-string v2, "ImportVCardActivity"

    const-string v3, "VCardReadThread.run(), ImportVCardActivity is finished, do not call mProgressDialog.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 767
    :cond_2
    iget-boolean v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_3

    .line 768
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto :goto_2

    .line 770
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 771
    .local v1, size:I
    if-nez v1, :cond_4

    .line 772
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$800(Lcom/android/htccontacts/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v5, 0x7f070009

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/htccontacts/ImportVCardActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 774
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1700(Lcom/android/htccontacts/ImportVCardActivity;)V

    goto :goto_2
.end method
