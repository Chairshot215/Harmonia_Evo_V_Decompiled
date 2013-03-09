.class Landroid/webkit/EditableWebView$EditableQuickActions$8;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V
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

    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4100(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4300(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4400(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4500(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4600(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$8;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$4700(Landroid/webkit/EditableWebView$EditableQuickActions;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->SetForeColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
