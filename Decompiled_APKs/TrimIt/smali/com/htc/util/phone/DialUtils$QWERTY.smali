.class public Lcom/htc/util/phone/DialUtils$QWERTY;
.super Ljava/lang/Object;
.source "DialUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/DialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QWERTY"
.end annotation


# static fields
.field public static final ACTION_KEY_EVENT:Ljava/lang/String; = "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final EXTRA_LONG_PRESS:Ljava/lang/String; = "long_press"


# instance fields
.field final synthetic this$0:Lcom/htc/util/phone/DialUtils;


# direct methods
.method public constructor <init>(Lcom/htc/util/phone/DialUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/util/phone/DialUtils$QWERTY;->this$0:Lcom/htc/util/phone/DialUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
