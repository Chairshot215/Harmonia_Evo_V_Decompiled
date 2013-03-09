.class Lcom/htc/store/activity/landing/LandingMyActivity$5;
.super Ljava/lang/Object;
.source "LandingMyActivity.java"

# interfaces
.implements Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;


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
    .line 637
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$5;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "keyword"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$5;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$5;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItemsByFilter(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
