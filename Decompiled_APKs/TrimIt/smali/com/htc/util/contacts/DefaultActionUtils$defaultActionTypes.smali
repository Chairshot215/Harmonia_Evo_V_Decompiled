.class public final Lcom/htc/util/contacts/DefaultActionUtils$defaultActionTypes;
.super Ljava/lang/Object;
.source "DefaultActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/DefaultActionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "defaultActionTypes"
.end annotation


# static fields
.field private static final ACTION_TYPE_EXCHANGE_CAR:Ljava/lang/String; = "ExchangePhoneCar"

.field private static final ACTION_TYPE_EXCHANGE_PHONE_RADIO:Ljava/lang/String; = "ExchangePhoneRadio"

.field private static final ACTION_TYPE_MAIL:Ljava/lang/String; = "Mail"

.field private static final ACTION_TYPE_PHONE_ASSISTANT:Ljava/lang/String; = "PhoneAssistant"

.field private static final ACTION_TYPE_PHONE_HOME:Ljava/lang/String; = "PhoneHome"

.field private static final ACTION_TYPE_PHONE_MOBILE:Ljava/lang/String; = "PhoneMobile"

.field private static final ACTION_TYPE_PHONE_PAGER:Ljava/lang/String; = "PhonePager"

.field private static final ACTION_TYPE_PHONE_WORK:Ljava/lang/String; = "PhoneWork"

.field private static final ACTION_TYPE_SMS:Ljava/lang/String; = "SMS"

.field private static final KIND_DIAL:I = 0xf01

.field private static final KIND_EMAIL:I = 0x1

.field private static final KIND_SEND_MSG:I = 0xf02

.field private static final KIND_VIEW_CONTACT_CARD:I = 0xf03


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/DefaultActionUtils;


# direct methods
.method public constructor <init>(Lcom/htc/util/contacts/DefaultActionUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/util/contacts/DefaultActionUtils$defaultActionTypes;->this$0:Lcom/htc/util/contacts/DefaultActionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
