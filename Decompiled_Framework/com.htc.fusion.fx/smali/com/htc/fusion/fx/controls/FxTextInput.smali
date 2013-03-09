.class public Lcom/htc/fusion/fx/controls/FxTextInput;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxTextInput.java"


# static fields
.field public static final EVENT_ENTERINPUTMODE:I = 0x1

.field public static final EVENT_EXITINPUTMODE:I = 0x2


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native addTextChangedListener(Landroid/text/TextWatcher;)V
.end method

.method public native append(Ljava/lang/CharSequence;)V
.end method

.method public native append(Ljava/lang/CharSequence;II)V
.end method

.method public native containAndroidView(Landroid/view/View;)Z
.end method

.method public native enterInputMode()V
.end method

.method public native exitInputMode()V
.end method

.method public native getCursorPosition()I
.end method

.method public native getCursorVisible()Z
.end method

.method public native getEnableAutoText()Z
.end method

.method public native getEnabled()Z
.end method

.method public native getHintText()Ljava/lang/String;
.end method

.method public native getInputType()I
.end method

.method public native getKeyListener()Landroid/text/method/KeyListener;
.end method

.method public native getLineCount()I
.end method

.method public native getMaxLength()I
.end method

.method public native getPaddingBottom()I
.end method

.method public native getPaddingLeft()I
.end method

.method public native getPaddingRight()I
.end method

.method public native getPaddingTop()I
.end method

.method public native getSelectAllOnFocus()Z
.end method

.method public native getSelectedString()Ljava/lang/String;
.end method

.method public native getSelectionEnd()I
.end method

.method public native getSelectionStart()I
.end method

.method public native getString()Ljava/lang/String;
.end method

.method public native getText()Landroid/text/Editable;
.end method

.method public native getTextInputEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxTextInputEvent;",
            ">;"
        }
    .end annotation
.end method

.method public native isInInputMode()Z
.end method

.method native loadTexture(Landroid/graphics/Bitmap;)V
.end method

.method public native selectAll()V
.end method

.method public native setBackgroundColor(I)V
.end method

.method public native setCursorPosition(I)V
.end method

.method public native setCursorVisible(Z)V
.end method

.method public native setEnableAutoText(Z)V
.end method

.method public native setEnabled(Z)V
.end method

.method public native setHintText(Ljava/lang/String;)V
.end method

.method public native setHintTextColor(I)V
.end method

.method public native setInputType(I)V
.end method

.method public native setKeyListener(Landroid/text/method/KeyListener;)V
.end method

.method public native setLines(I)V
.end method

.method public native setMaxLength(I)V
.end method

.method public native setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public native setPadding(IIII)V
.end method

.method public native setSelectAllOnFocus(Z)V
.end method

.method public native setSelection(II)V
.end method

.method public native setSingleLine(Z)V
.end method

.method public native setString(Ljava/lang/String;)V
.end method

.method public native setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end method

.method public native setTextColor(I)V
.end method

.method public native setTransparentBackground(Z)V
.end method

.method public native swapStreamingTextureVisibility(Z)V
.end method

.method public native updateTextScreenPosition(Z)V
.end method
