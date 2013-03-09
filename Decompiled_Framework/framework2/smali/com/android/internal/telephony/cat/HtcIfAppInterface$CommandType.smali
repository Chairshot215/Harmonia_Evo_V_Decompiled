.class public final enum Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
.super Ljava/lang/Enum;
.source "HtcIfAppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/HtcIfAppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "DISPLAY_TEXT"

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "GET_INKEY"

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "GET_INPUT"

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "PLAY_TONE"

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "REFRESH"

    const/4 v2, 0x5

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SELECT_ITEM"

    const/4 v2, 0x6

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v2, 0x7

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v2, 0x8

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v2, 0x9

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v2, 0xa

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SET_UP_MENU"

    const/16 v2, 0xd

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    const/16 v2, 0xe

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "OPEN_CHANNEL"

    const/16 v2, 0xf

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "CLOSE_CHANNEL"

    const/16 v2, 0x10

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "RECEIVE_DATA"

    const/16 v2, 0x11

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "SEND_DATA"

    const/16 v2, 0x12

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "GET_CHANNEL_STATUS"

    const/16 v2, 0x13

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const-string v1, "PROVIDE_LOCAL_INFORMATION"

    const/16 v2, 0x14

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    sget-object v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->mValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/internal/telephony/cat/AppInterface$CommandType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 5

    invoke-static {}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget v4, v1, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->mValue:I

    return v0
.end method
