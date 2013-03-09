.class public Lcom/android/providers/contacts/NameSplitter$Name;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NameSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field public familyName:Ljava/lang/String;

.field public fullNameStyle:I

.field public givenNames:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field public phoneticFamilyName:Ljava/lang/String;

.field public phoneticGivenName:Ljava/lang/String;

.field public phoneticMiddleName:Ljava/lang/String;

.field public phoneticNameStyle:I

.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "givenNames"
    .parameter "middleName"
    .parameter "familyName"
    .parameter "suffix"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "values"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 181
    if-eqz p3, :cond_0

    .line 182
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 192
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 193
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 196
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 197
    return-void
.end method

.method public fromValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v1, "data4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 151
    const-string v1, "data2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 152
    const-string v1, "data5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 153
    const-string v1, "data3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 154
    const-string v1, "data6"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 156
    const-string v1, "data10"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    .local v0, integer:Ljava/lang/Integer;
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 159
    const-string v1, "data9"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 160
    const-string v1, "data8"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 161
    const-string v1, "data7"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 163
    const-string v1, "data11"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    :goto_1
    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 165
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameStyle()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    return v0
.end method

.method public getGivenNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticNameStyle()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 168
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "data2"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "data3"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "data10"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "data9"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "data8"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "data7"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/NameSplitter$Name;->putValueIfPresent(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "data11"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    return-void
.end method
