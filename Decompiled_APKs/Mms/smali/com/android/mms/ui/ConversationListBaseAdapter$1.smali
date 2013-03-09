.class final Lcom/android/mms/ui/ConversationListBaseAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseAdapter;->createConversationCacheView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 637
    const-string v6, "Jerry"

    const-string v7, "preload layout >>>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v5, 0x0

    .line 645
    .local v5, viewGroup:Landroid/view/ViewGroup;
    :try_start_0
    sget-object v6, Lcom/android/mms/ui/ConversationListBaseAdapter;->s_ConversationView:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    .line 646
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v6, 0xf

    if-ge v3, v6, :cond_0

    .line 647
    const-string v6, "Jerry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cache view >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v2

    .line 649
    .local v2, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v4, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 651
    .local v4, view1:Landroid/view/View;
    invoke-static {}, Lcom/android/mms/ui/ConversationListBaseAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    .end local v2           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .end local v3           #i:I
    .end local v4           #view1:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 655
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v6, "Jerry"

    const-string v7, "preload layout <<<<"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method
