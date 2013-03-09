.class Lcom/htc/store/activity/landing/SearchMyActivity$4;
.super Ljava/lang/Object;
.source "SearchMyActivity.java"

# interfaces
.implements Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/SearchMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/SearchMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$4;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Z)V
    .locals 6
    .parameter "isEmpty"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 208
    invoke-static {}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onContentChanged: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    if-nez p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$4;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #calls: Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$600(Lcom/htc/store/activity/landing/SearchMyActivity;I)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$4;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #calls: Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$600(Lcom/htc/store/activity/landing/SearchMyActivity;I)V

    goto :goto_0
.end method

.method public onCursorChanged(Z)V
    .locals 6
    .parameter "isEmpty"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 199
    invoke-static {}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onCursorChanged: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    if-nez p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$4;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #calls: Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$600(Lcom/htc/store/activity/landing/SearchMyActivity;I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$4;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #calls: Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V
    invoke-static {v0, v5}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$600(Lcom/htc/store/activity/landing/SearchMyActivity;I)V

    goto :goto_0
.end method
