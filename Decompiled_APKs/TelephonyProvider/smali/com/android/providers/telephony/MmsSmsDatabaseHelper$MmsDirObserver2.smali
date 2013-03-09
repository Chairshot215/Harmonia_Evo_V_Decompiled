.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;
.super Landroid/os/FileObserver;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmsDirObserver2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 7285
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;->this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 7286
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfff

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 7287
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "path"

    .prologue
    .line 7291
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$MmsDirObserver2;->this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    const-string v1, "FolderObserver2"

    #calls: Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->_DumpMmsDBInfo(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->access$200(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;Ljava/lang/String;ILjava/lang/String;)V

    .line 7292
    return-void
.end method
