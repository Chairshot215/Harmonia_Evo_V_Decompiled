.class Lcom/htc/sdm/activity/SDMCreateNew$5;
.super Ljava/lang/Object;
.source "SDMCreateNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SDMCreateNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SDMCreateNew;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SDMCreateNew;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMCreateNew$5;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew$5;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDialogNewName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/sdm/activity/SDMCreateNew;->access$200(Lcom/htc/sdm/activity/SDMCreateNew;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    :cond_0
    return-void
.end method
