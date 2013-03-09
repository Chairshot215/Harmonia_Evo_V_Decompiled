.class public abstract Lcom/htc/util/mail/mimemessage/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"

# interfaces
.implements Lcom/htc/util/mail/mimemessage/Part;


# instance fields
.field protected mParent:Lcom/htc/util/mail/mimemessage/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lcom/htc/util/mail/mimemessage/Multipart;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/BodyPart;->mParent:Lcom/htc/util/mail/mimemessage/Multipart;

    return-object v0
.end method
