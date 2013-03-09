.class public Landroid/widget/AutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public hasWrap()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #calls: Landroid/widget/AutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$500(Landroid/widget/AutoCompleteTextView;)V

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
