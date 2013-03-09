.class public final enum Lcom/htc/widget/profile/HtcProfileMode;
.super Ljava/lang/Enum;
.source "HtcProfileMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/widget/profile/HtcProfileMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/widget/profile/HtcProfileMode;

.field public static final enum NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

.field public static final enum OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

.field public static final enum SILENT:Lcom/htc/widget/profile/HtcProfileMode;

.field public static final enum VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;


# instance fields
.field private mIndex:I

.field private mRingerMode:I

.field private mStringResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/htc/widget/profile/HtcProfileMode;

    const-string v1, "NORMAL"

    const v4, 0x7f040005

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/profile/HtcProfileMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/htc/widget/profile/HtcProfileMode;->NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

    .line 27
    new-instance v6, Lcom/htc/widget/profile/HtcProfileMode;

    const-string v7, "SILENT"

    const v10, 0x7f040006

    move v9, v8

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/htc/widget/profile/HtcProfileMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/htc/widget/profile/HtcProfileMode;->SILENT:Lcom/htc/widget/profile/HtcProfileMode;

    .line 30
    new-instance v3, Lcom/htc/widget/profile/HtcProfileMode;

    const-string v4, "VIBRATE"

    const v7, 0x7f040007

    move v6, v5

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/profile/HtcProfileMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    .line 33
    new-instance v9, Lcom/htc/widget/profile/HtcProfileMode;

    const-string v10, "OUTDOOR"

    const v13, 0x7f040008

    move v11, v15

    move v12, v15

    move v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/htc/widget/profile/HtcProfileMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/htc/widget/profile/HtcProfileMode;->OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/widget/profile/HtcProfileMode;

    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->SILENT:Lcom/htc/widget/profile/HtcProfileMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

    aput-object v1, v0, v15

    sput-object v0, Lcom/htc/widget/profile/HtcProfileMode;->$VALUES:[Lcom/htc/widget/profile/HtcProfileMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "stringResource"
    .parameter "ringerMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    .line 59
    iput p4, p0, Lcom/htc/widget/profile/HtcProfileMode;->mStringResource:I

    .line 60
    iput p5, p0, Lcom/htc/widget/profile/HtcProfileMode;->mRingerMode:I

    .line 61
    return-void
.end method

.method public static getProfileMode(I)Lcom/htc/widget/profile/HtcProfileMode;
    .locals 3
    .parameter "index"

    .prologue
    .line 101
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

    iget v1, v1, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    if-ne p0, v1, :cond_0

    .line 102
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->NORMAL:Lcom/htc/widget/profile/HtcProfileMode;

    .line 108
    :goto_0
    return-object v1

    .line 103
    :cond_0
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->SILENT:Lcom/htc/widget/profile/HtcProfileMode;

    iget v1, v1, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    if-ne p0, v1, :cond_1

    .line 104
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->SILENT:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    iget v1, v1, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    if-ne p0, v1, :cond_2

    .line 106
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->VIBRATE:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 107
    :cond_2
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

    iget v1, v1, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    if-ne p0, v1, :cond_3

    .line 108
    sget-object v1, Lcom/htc/widget/profile/HtcProfileMode;->OUTDOOR:Lcom/htc/widget/profile/HtcProfileMode;

    goto :goto_0

    .line 111
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THe index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static supportOutdoorMode()Z
    .locals 2

    .prologue
    .line 121
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/widget/profile/HtcProfileMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/htc/widget/profile/HtcProfileMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/profile/HtcProfileMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/widget/profile/HtcProfileMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/widget/profile/HtcProfileMode;->$VALUES:[Lcom/htc/widget/profile/HtcProfileMode;

    invoke-virtual {v0}, [Lcom/htc/widget/profile/HtcProfileMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/widget/profile/HtcProfileMode;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/widget/profile/HtcProfileMode;->mIndex:I

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/widget/profile/HtcProfileMode;->mRingerMode:I

    return v0
.end method

.method public getStringResource()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/widget/profile/HtcProfileMode;->mStringResource:I

    return v0
.end method
