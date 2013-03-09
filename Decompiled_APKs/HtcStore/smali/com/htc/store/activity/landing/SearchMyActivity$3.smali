.class Lcom/htc/store/activity/landing/SearchMyActivity$3;
.super Ljava/lang/Object;
.source "SearchMyActivity.java"

# interfaces
.implements Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;


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
    .line 189
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$3;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "keyword"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$3;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$400(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItemsByKeyword(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
