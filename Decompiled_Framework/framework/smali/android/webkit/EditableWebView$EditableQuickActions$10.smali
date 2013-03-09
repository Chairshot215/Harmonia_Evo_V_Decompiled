.class Landroid/webkit/EditableWebView$EditableQuickActions$10;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v1, v2, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    if-nez v3, :cond_0

    :goto_1
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    if-nez v3, :cond_1

    :goto_2
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$10;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    if-nez v3, :cond_2

    :goto_3
    iput-boolean v0, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
