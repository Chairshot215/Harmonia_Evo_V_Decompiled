.class Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutoFillSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 103
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 109
    return-void
.end method
