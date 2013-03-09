.class public Lcom/google/android/voicesearch/HelpChooserDialog;
.super Landroid/app/Dialog;
.source "HelpChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/HelpChooserDialog$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const v0, 0x7f0c0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method private findAndAttachClickListener(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private getClientVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 108
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onSettings()V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onCancel()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onSpeakNow()V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onFeedback()V

    goto :goto_0

    .line 84
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onWebHelp()V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpChooserDialog$Listener;->onTutorial()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0017
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpChooserDialog;->updateLayout()V

    .line 50
    const v1, 0x7f0e0016

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, title:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpChooserDialog;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, 0x7f0e001b

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 54
    const v1, 0x7f0e0017

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 55
    const v1, 0x7f0e001c

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 56
    const v1, 0x7f0e001a

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 57
    const v1, 0x7f0e0019

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 58
    const v1, 0x7f0e0018

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/HelpChooserDialog;->findAndAttachClickListener(I)V

    .line 59
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setListener(Lcom/google/android/voicesearch/HelpChooserDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpChooserDialog;->mListener:Lcom/google/android/voicesearch/HelpChooserDialog$Listener;

    .line 43
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;)V

    .line 100
    return-void
.end method
