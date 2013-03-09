.class Lcom/android/phone/EditMSISDNContactScreen$2;
.super Ljava/lang/Object;
.source "EditMSISDNContactScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditMSISDNContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditMSISDNContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditMSISDNContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/EditMSISDNContactScreen$2;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 184
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 188
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
