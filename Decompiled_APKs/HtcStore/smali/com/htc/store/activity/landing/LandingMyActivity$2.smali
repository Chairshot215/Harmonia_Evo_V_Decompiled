.class Lcom/htc/store/activity/landing/LandingMyActivity$2;
.super Ljava/lang/Object;
.source "LandingMyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$2;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$2;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->startSearch()V
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$700(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    .line 463
    return-void
.end method
