.class final Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcDeferPersonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/htc/HtcDeferPersonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    invoke-virtual {v0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    #calls: Lcom/android/phone/htc/HtcDeferPersonActivity;->handleOnqueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/htc/HtcDeferPersonActivity;->access$000(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/database/Cursor;)V

    .line 108
    :cond_0
    return-void
.end method
