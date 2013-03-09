.class final Lcom/htc/sdcardwizard/handler/RingtonesHandler;
.super Lcom/htc/sdcardwizard/handler/SDMLHandler;
.source "RingtonesHandler.java"


# static fields
.field private static final CATEGORY_ICON_RESOURCE_ID:I = 0x2080b73

.field private static final INFO_URI:Ljava/lang/String; = "content://com.htc.sdm.provider.SDMProvider/deleteRingtone"

.field private static final TYPE:I = 0x2


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 8
    const v0, 0x2080b73

    const-string v1, "content://com.htc.sdm.provider.SDMProvider/deleteRingtone"

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/SDMLHandler;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getListType()I
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    return v0
.end method
