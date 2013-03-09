.class public interface abstract Lcom/android/htccontacts/model/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/Editor$EditorListener;
    }
.end annotation


# virtual methods
.method public abstract onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
.end method

.method public abstract setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
.end method
