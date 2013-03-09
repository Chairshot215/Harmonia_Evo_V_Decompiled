.class public Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;
.super Landroid/app/Dialog;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 3121
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3122
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 3147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 3126
    const-string v2, "ConversationListBaseActivity"

    const-string v3, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3130
    .local v1, theWindow:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 3131
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 3132
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 3134
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;->setContentView(I)V

    .line 3136
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 3138
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 3139
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3140
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3141
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3142
    const-string v2, "ConversationListBaseActivity"

    const-string v3, "onCreate() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 3151
    const/4 v0, 0x0

    return v0
.end method
