.class Lcom/htc/sdcardwizard/SDCardItemsActivity$1;
.super Ljava/lang/Object;
.source "SDCardItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/SDCardItemsActivity;->initCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity$1;->this$0:Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->finish()V

    .line 87
    return-void
.end method
