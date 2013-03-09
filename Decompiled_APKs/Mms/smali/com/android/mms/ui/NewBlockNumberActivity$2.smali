.class Lcom/android/mms/ui/NewBlockNumberActivity$2;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewBlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$2;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 111
    sparse-switch p2, :sswitch_data_0

    .line 123
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 114
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/NewBlockNumberActivity$2;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, numbers:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 116
    .local v3, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/NewBlockNumberActivity$2;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/NewBlockNumberActivity;->tryInsertBlockedNumber(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
