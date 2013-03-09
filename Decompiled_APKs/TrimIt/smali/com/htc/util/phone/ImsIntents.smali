.class public Lcom/htc/util/phone/ImsIntents;
.super Ljava/lang/Object;
.source "ImsIntents.java"


# static fields
.field public static final ACTION_IMS_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.htc.intent.action.IMS_SERVICE_STATE"

.field public static final ACTION_IMS_SERVICE_STATE_INFO:Ljava/lang/String; = "com.htc.intent.action.IMS_SERVICE_STATE_INFO"

.field public static final EXTRA_IMS_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_IMS_REASON_VALUE_INIT_REGISTERED:Ljava/lang/String; = "INIT_REGISTERED"

.field public static final EXTRA_IMS_REASON_VALUE_NETWORK_DISCONNECTED:Ljava/lang/String; = "NETWORK_DISCONNECTED"

.field public static final EXTRA_IMS_REASON_VALUE_RE_REGISTERED:Ljava/lang/String; = "RE_REGISTERED"

.field public static final EXTRA_IMS_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_IMS_STATE_VALUE_NOT_REGISTERED:Ljava/lang/String; = "NOT_REGISTERED"

.field public static final EXTRA_IMS_STATE_VALUE_REGISTERED:Ljava/lang/String; = "REGISTERED"

.field public static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "gsm.volte.ims.registered"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
