.class Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;
.super Ljava/lang/Object;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileNameViewHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "textView"
    .parameter "checkBox"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 280
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->textView:Landroid/widget/TextView;

    .line 281
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method
