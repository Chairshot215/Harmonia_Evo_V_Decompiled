.class public Lcom/htc/widget/AboutDialog$Builder;
.super Ljava/lang/Object;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/htc/widget/AboutDialog$AboutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/AboutDialog$AboutParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    .line 136
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/widget/AboutDialog;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/htc/widget/AboutDialog;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-virtual {v1}, Lcom/htc/widget/AboutDialog$AboutParams;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/AboutDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/AboutDialog$AboutParams;)V

    .line 215
    .local v0, dialog:Lcom/htc/widget/AboutDialog;
    return-object v0
.end method

.method public setAppDescription(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;
    .locals 1
    .parameter "description"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iput-object p1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->appContent:Ljava/lang/CharSequence;

    .line 196
    return-object p0
.end method

.method public setAppName(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iput-object p1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->appName:Ljava/lang/CharSequence;

    .line 143
    return-object p0
.end method

.method public setAppVersion(II)Lcom/htc/widget/AboutDialog$Builder;
    .locals 3
    .parameter "A"
    .parameter "B"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v2, v2, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    .line 162
    return-object p0
.end method

.method public setAppVersion(III)Lcom/htc/widget/AboutDialog$Builder;
    .locals 3
    .parameter "A"
    .parameter "B"
    .parameter "C"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v2, v2, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    .line 175
    return-object p0
.end method

.method public setAppVersion(IIILjava/lang/String;)Lcom/htc/widget/AboutDialog$Builder;
    .locals 3
    .parameter "A"
    .parameter "B"
    .parameter "C"
    .parameter "D"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v2, v2, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    .line 189
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;
    .locals 3
    .parameter "version"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v2, v2, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    .line 150
    return-object p0
.end method

.method public setLongText(Z)Lcom/htc/widget/AboutDialog$Builder;
    .locals 1
    .parameter "yes"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$Builder;->P:Lcom/htc/widget/AboutDialog$AboutParams;

    iput-boolean p1, v0, Lcom/htc/widget/AboutDialog$AboutParams;->isLongContent:Z

    .line 205
    return-object p0
.end method

.method public show()Lcom/htc/widget/AboutDialog;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/widget/AboutDialog$Builder;->create()Lcom/htc/widget/AboutDialog;

    move-result-object v0

    .line 224
    .local v0, dialog:Lcom/htc/widget/AboutDialog;
    invoke-virtual {v0}, Lcom/htc/widget/AboutDialog;->show()V

    .line 225
    return-object v0
.end method
