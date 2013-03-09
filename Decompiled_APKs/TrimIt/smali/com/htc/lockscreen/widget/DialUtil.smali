.class public Lcom/htc/lockscreen/widget/DialUtil;
.super Ljava/lang/Object;
.source "DialUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMERGENCY_NUMBERS:[Ljava/lang/String; = null

.field private static final LOG_PREFIX:Ljava/lang/String; = "DialUtil"

.field private static final MAX_LENGTH:I = 0x32


# instance fields
.field mContext:Landroid/content/Context;

.field mNumber:Ljava/lang/StringBuffer;

.field mUseExtract:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#911"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*911"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "911"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "112"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "bUseExtact"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/widget/DialUtil;->mUseExtract:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    .line 31
    iput-object p1, p0, Lcom/htc/lockscreen/widget/DialUtil;->mContext:Landroid/content/Context;

    .line 32
    iput-boolean p2, p0, Lcom/htc/lockscreen/widget/DialUtil;->mUseExtract:Z

    .line 33
    return-void
.end method

.method private getEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "number"
    .parameter "bExtract"

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v3

    .line 113
    :cond_1
    if-eqz p2, :cond_2

    .line 114
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 119
    sget-object v4, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 121
    .local v2, phoneLength:I
    if-le v2, v1, :cond_3

    .line 122
    sub-int v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_3
    sget-object v4, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    sget-object v3, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    aget-object v3, v3, v0

    goto :goto_0

    .line 118
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static placeCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v3

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .local v2, length:I
    if-lez v2, :cond_0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v3, 0x1

    goto :goto_0

    .line 90
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/widget/DialUtil;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 172
    .local v0, len1:I
    const/4 v1, -0x1

    .line 173
    .local v1, len2:I
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    :cond_0
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 179
    :cond_1
    if-ne v0, v1, :cond_2

    .line 180
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 182
    :cond_2
    if-le v0, v1, :cond_3

    .line 183
    const/4 v2, -0x1

    goto :goto_0

    .line 185
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 45
    sget-object v4, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 46
    .local v1, match:C
    if-eqz v1, :cond_1

    .line 47
    iget-object v4, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    iget-object v4, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 49
    .local v0, length:I
    const/16 v4, 0x32

    if-le v0, v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v0, -0x32

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 54
    .end local v0           #length:I
    .end local v1           #match:C
    :cond_0
    :goto_0
    return v2

    .line 38
    :pswitch_0
    iget-object v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 39
    .restart local v0       #length:I
    if-lez v0, :cond_0

    .line 40
    iget-object v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0           #length:I
    .restart local v1       #match:C
    :cond_1
    move v2, v3

    .line 54
    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public placeCall()Z
    .locals 4

    .prologue
    .line 59
    iget-object v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 60
    .local v1, length:I
    if-lez v1, :cond_0

    .line 61
    iget-object v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, number:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mUseExtract:Z

    invoke-direct {p0, v2, v3}, Lcom/htc/lockscreen/widget/DialUtil;->getEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, emergencyNum:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/htc/lockscreen/widget/DialUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 70
    .end local v0           #emergencyNum:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public resetNumber()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 100
    .local v0, length:I
    if-lez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/lockscreen/widget/DialUtil;->mNumber:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    return-void
.end method
