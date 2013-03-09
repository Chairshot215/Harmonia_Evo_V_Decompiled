.class Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "SimAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/SimAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPhoneActionInflater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/model/SimAccountType;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/model/SimAccountType;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;->this$0:Lcom/android/htccontacts/model/SimAccountType;

    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/model/SimAccountType;Lcom/android/htccontacts/model/SimAccountType$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/htccontacts/model/SimAccountType$SimPhoneActionInflater;-><init>(Lcom/android/htccontacts/model/SimAccountType;)V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 141
    const v0, 0x7f0a0171

    return v0
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
