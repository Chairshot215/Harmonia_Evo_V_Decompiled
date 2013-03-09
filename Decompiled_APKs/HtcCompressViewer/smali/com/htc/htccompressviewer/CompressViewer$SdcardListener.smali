.class Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;
.super Landroid/content/BroadcastReceiver;
.source "CompressViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardListener"
.end annotation


# instance fields
.field isLoadingList:Z

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method private constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->isLoadingList:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;Lcom/htc/htccompressviewer/CompressViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;-><init>(Lcom/htc/htccompressviewer/CompressViewer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const v5, 0x7f090002

    const v4, 0x208086b

    const/4 v3, 0x0

    .line 1164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1167
    iget-boolean v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->isLoadingList:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/HtcZip;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->isLoadingList:Z

    .line 1174
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->hideNoSdCard()V
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$900(Lcom/htc/htccompressviewer/CompressViewer;)V

    .line 1175
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    .line 1207
    :cond_3
    :goto_0
    return-void

    .line 1177
    :cond_4
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1180
    :cond_5
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1181
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->hideNoSdCard()V
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$900(Lcom/htc/htccompressviewer/CompressViewer;)V

    .line 1182
    iput-boolean v3, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->isLoadingList:Z

    .line 1183
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v2, v5}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1184
    .local v0, SDcardView:Landroid/widget/ImageView;
    if-eqz v0, :cond_6

    .line 1185
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1186
    const v2, 0x2080867

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1191
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/CompressViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->showNoSdCard(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$1000(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1193
    .end local v0           #SDcardView:Landroid/widget/ImageView;
    :cond_8
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1194
    iput-boolean v3, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->isLoadingList:Z

    .line 1195
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->hideNoSdCard()V
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$900(Lcom/htc/htccompressviewer/CompressViewer;)V

    .line 1196
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v2, v5}, Lcom/htc/htccompressviewer/CompressViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1197
    .restart local v0       #SDcardView:Landroid/widget/ImageView;
    if-eqz v0, :cond_9

    .line 1198
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1199
    const v2, 0x2080864

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1204
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$SdcardListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/CompressViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->showNoSdCard(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$1000(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1201
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
