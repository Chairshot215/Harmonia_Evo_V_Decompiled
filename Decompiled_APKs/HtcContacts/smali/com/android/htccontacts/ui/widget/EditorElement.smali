.class public interface abstract Lcom/android/htccontacts/ui/widget/EditorElement;
.super Ljava/lang/Object;
.source "EditorElement.java"


# static fields
.field public static final TYPE_BIRTHDAY_AND_ANNIVERDARY:I = 0x3

.field public static final TYPE_CHECKBOX:I = 0x6

.field public static final TYPE_GENERL:I = 0x0

.field public static final TYPE_GROUP:I = 0x1

.field public static final TYPE_NOTES:I = 0x5

.field public static final TYPE_ORGANIZATION:I = 0x4

.field public static final TYPE_POPUP:I = 0x2


# virtual methods
.method public abstract getElementType()I
.end method

.method public abstract requestFocusEditableView()V
.end method

.method public abstract setDeletable(Z)V
.end method

.method public abstract setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V
.end method

.method public abstract setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
.end method

.method public abstract setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
.end method

.method public abstract setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
.end method
