.class Lcom/htc/sdm/activity/SDMCreateNew$2;
.super Ljava/lang/Object;
.source "SDMCreateNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SDMCreateNew;->onCreate(Landroid/os/Bundle;)V
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
    .line 151
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMCreateNew$2;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMCreateNew$2;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SDMCreateNew;->onSave()V

    .line 155
    return-void
.end method
