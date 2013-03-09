.class public Lcom/htc/android/htcime/deprecated/voice/FieldContext;
.super Ljava/lang/Object;
.source "FieldContext.java"


# static fields
.field static final FIELD_ID:Ljava/lang/String; = "fieldId"

.field static final FIELD_NAME:Ljava/lang/String; = "fieldName"

.field static final HINT:Ljava/lang/String; = "hint"

.field static final IME_OPTIONS:Ljava/lang/String; = "imeOptions"

.field static final INPUT_TYPE:Ljava/lang/String; = "inputType"

.field static final LABEL:Ljava/lang/String; = "label"

.field static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final SINGLE_LINE:Ljava/lang/String; = "singleLine"


# instance fields
.field mFieldInfo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "conn"
    .parameter "info"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    .line 44
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p2, v0}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V

    .line 46
    const-string v0, "FieldContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method private static addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V
    .locals 2
    .parameter "info"
    .parameter "bundle"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "label"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "hint"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "fieldId"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v0, "fieldName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "inputType"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v0, "imeOptions"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V
    .locals 4
    .parameter "conn"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 78
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "singleLine"

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
