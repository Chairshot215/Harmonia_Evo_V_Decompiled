.class Lcom/htc/widget/ButtonStyleEditText$1;
.super Ljava/lang/Object;
.source "ButtonStyleEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ButtonStyleEditText;->enableButtonType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ButtonStyleEditText;


# direct methods
.method constructor <init>(Lcom/htc/widget/ButtonStyleEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/widget/ButtonStyleEditText$1;->this$0:Lcom/htc/widget/ButtonStyleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
