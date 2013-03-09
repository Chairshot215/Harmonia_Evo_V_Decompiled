.class public interface abstract Lcom/android/mms/view/EditableMediaView;
.super Ljava/lang/Object;
.source "EditableMediaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/view/EditableMediaView$OnReplaceListener;,
        Lcom/android/mms/view/EditableMediaView$OnRemoveListener;,
        Lcom/android/mms/view/EditableMediaView$OnPreviewListener;
    }
.end annotation


# virtual methods
.method public abstract bindTo(Lcom/android/mms/model/MediaModel;)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOnPreviewListener(Lcom/android/mms/view/EditableMediaView$OnPreviewListener;)V
.end method

.method public abstract setOnRemoveListener(Lcom/android/mms/view/EditableMediaView$OnRemoveListener;)V
.end method

.method public abstract setOnReplaceListener(Lcom/android/mms/view/EditableMediaView$OnReplaceListener;)V
.end method

.method public abstract setPreview(Landroid/graphics/drawable/Drawable;)V
.end method
