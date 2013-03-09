.class public Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
.super Ljava/lang/Object;
.source "ContactStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/pim/vcard/ContactStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMData"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v3, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;

    .line 106
    .local v0, imdata:Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->data:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #imdata:Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
    :cond_3
    move v1, v2

    .line 108
    goto :goto_0
.end method
