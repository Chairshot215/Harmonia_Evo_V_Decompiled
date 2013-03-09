.class Lcom/android/mms/ui/MultipleDeleteActivity$3;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->deleteThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
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
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$delUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v1, 0x709

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 732
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 735
    .local v13, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 733
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 739
    .end local v12           #i:I
    .end local v13           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 740
    .local v2, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 741
    const-string v0, "MultipleDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDelete: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$selection:Ljava/lang/String;

    const-string v3, "locked=0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$delUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$selection:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 754
    :cond_1
    return-void

    .line 746
    :cond_2
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 747
    const-string v0, "thread_id = %s AND locked=0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, sel:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_3

    .line 749
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$delUri:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 746
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 751
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity$3;->val$delUri:Landroid/net/Uri;

    move-object v8, v2

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method
