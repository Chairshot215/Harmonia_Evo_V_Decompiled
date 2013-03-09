.class public final enum Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
.super Ljava/lang/Enum;
.source "CSConnectionModeMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/util/CSConnectionModeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSConnectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Every_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Every_six_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Every_three_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Every_two_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Manual:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum every_twelve_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field public static final enum every_twentyfour_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;


# instance fields
.field private final mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 106
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Manual"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Manual:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 107
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Push"

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 108
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Every_hour"

    invoke-direct {v0, v1, v5, v4}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 109
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Every_two_hour"

    invoke-direct {v0, v1, v6, v5}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_two_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 110
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Every_three_hour"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_three_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 111
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "Every_six_hour"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_six_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 112
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "every_twelve_hour"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twelve_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 113
    new-instance v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const-string v1, "every_twentyfour_hour"

    const/4 v2, 0x7

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twentyfour_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 104
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Manual:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_two_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_three_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_six_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twelve_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twentyfour_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->$VALUES:[Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->mFrequency:I

    .line 120
    return-void
.end method

.method public static conversion(I)Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Manual:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 134
    :pswitch_2
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 136
    :pswitch_3
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_two_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 138
    :pswitch_4
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_three_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 140
    :pswitch_5
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Every_six_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 142
    :pswitch_6
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twelve_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 144
    :pswitch_7
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->every_twentyfour_hour:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->$VALUES:[Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-virtual {v0}, [Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    return-object v0
.end method


# virtual methods
.method public getSyncFrequency()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->mFrequency:I

    return v0
.end method
