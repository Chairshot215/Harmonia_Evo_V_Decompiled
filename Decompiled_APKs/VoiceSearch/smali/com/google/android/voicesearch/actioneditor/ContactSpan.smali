.class public Lcom/google/android/voicesearch/actioneditor/ContactSpan;
.super Ljava/lang/Object;
.source "ContactSpan.java"


# instance fields
.field private mAddressEnd:I

.field private mAddressStart:I

.field private mContact:Lcom/google/android/voicesearch/actions/Contact;

.field private mNameEnd:I

.field private mNameStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->parseContact(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private parseContact(Ljava/lang/String;)V
    .locals 9
    .parameter "string"

    .prologue
    const/4 v8, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, actualAddressStart:I
    const/4 v0, 0x0

    .line 42
    .local v0, actualAddressEnd:I
    const-string v6, "<"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 43
    .local v3, divider:I
    if-gez v3, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    :goto_0
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, end:I
    if-ltz v4, :cond_0

    iget v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    if-ge v4, v6, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 61
    :goto_1
    move v0, v4

    .line 62
    iput v8, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameStart:I

    .line 64
    iget v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameStart:I

    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, address:Ljava/lang/String;
    new-instance v6, Lcom/google/android/voicesearch/actions/Contact;

    const-string v7, ""

    invoke-direct {v6, v5, v2, v7, v8}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    .line 68
    return-void

    .line 48
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #end:I
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    iput v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    .line 49
    iput v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    .line 50
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 58
    .restart local v4       #end:I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressEnd:I

    goto :goto_1
.end method


# virtual methods
.method public getAddressEnd()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressEnd:I

    return v0
.end method

.method public getAddressStart()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    return v0
.end method

.method public getContact()Lcom/google/android/voicesearch/actions/Contact;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    return-object v0
.end method
