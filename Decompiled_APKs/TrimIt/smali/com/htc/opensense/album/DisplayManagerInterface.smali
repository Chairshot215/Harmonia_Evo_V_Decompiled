.class public interface abstract Lcom/htc/opensense/album/DisplayManagerInterface;
.super Ljava/lang/Object;
.source "DisplayManagerInterface.java"


# static fields
.field public static final KEY_FOCUS_TEMPLATE:Ljava/lang/String; = "focus_template"

.field public static final KEY_PREVIOUS_TEMPLATE:Ljava/lang/String; = "previous_template"

.field public static final KEY_TEMPLATE_TRANSITION:Ljava/lang/String; = "transition_template"


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;
.end method

.method public abstract getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;
.end method

.method public abstract getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;
.end method

.method public abstract getFocusTemplateId()I
.end method

.method public abstract getPreviousTemplateId()I
.end method

.method public abstract refreshControlBars()V
.end method

.method public abstract safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;IZ)V
.end method

.method public abstract switchBackToPreviousTemplate(Z)V
.end method

.method public abstract switchCommandBar(II)V
.end method

.method public abstract switchTemplate(ILandroid/os/Bundle;Z)V
.end method
