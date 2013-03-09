.class Lcom/android/mms/ui/MultipleDeleteActivity$2;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->deleteHtcThreads(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

.field final synthetic val$delUri:Landroid/net/Uri;

.field final synthetic val$ids2:Ljava/util/ArrayList;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$ids2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$delUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$selection:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 688
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/conversations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 691
    .local v7, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 689
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 695
    .end local v6           #i:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 696
    .local v2, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 697
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDelete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$delUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$2;->val$selection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 700
    return-void
.end method
