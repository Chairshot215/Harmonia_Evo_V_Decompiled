.class Lcom/htc/store/activity/landing/SearchMyActivity$2;
.super Ljava/lang/Object;
.source "SearchMyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$2;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$2;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #calls: Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$300(Lcom/htc/store/activity/landing/SearchMyActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->setAccount(Landroid/content/Context;)V

    .line 166
    return-void
.end method
