.class Lcom/futuredial/ui/AccountData;
.super Ljava/lang/Object;
.source "ViewSelectDataType.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mTypeLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "description"

    .prologue
    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mName:Ljava/lang/String;

    .line 1160
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mType:Ljava/lang/String;

    .line 1161
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    .line 1171
    iput-object p2, p0, Lcom/futuredial/ui/AccountData;->mName:Ljava/lang/String;

    .line 1172
    if-eqz p3, :cond_2

    .line 1173
    iget-object v2, p3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mType:Ljava/lang/String;

    .line 1177
    iget-object v0, p3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 1178
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1180
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget v2, p3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    if-eqz v2, :cond_0

    .line 1181
    iget v2, p3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    .line 1182
    iget-object v2, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "LabelID provided, but label not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1186
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    .line 1202
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 1199
    :cond_2
    iput-object p2, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    .line 1200
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/ui/AccountData;->mName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/futuredial/ui/AccountData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/futuredial/ui/AccountData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/futuredial/ui/AccountData;->mTypeLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
