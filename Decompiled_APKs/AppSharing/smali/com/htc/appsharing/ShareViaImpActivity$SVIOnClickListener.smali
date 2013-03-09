.class Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;
.super Ljava/lang/Object;
.source "ShareViaImpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/ShareViaImpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SVIOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-virtual {v0, p2}, Lcom/htc/appsharing/ShareViaImpActivity;->StartShareActivity(I)V

    .line 257
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnClickListener;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-virtual {v0}, Lcom/htc/appsharing/ShareViaImpActivity;->finish()V

    .line 258
    return-void
.end method
