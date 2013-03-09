.class public Lcom/htc/util/phone/PhoneUtils$Intents;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_END_CALL:Ljava/lang/String; = "com.htc.util.contacts.Intent.ACTION_END_CALL"


# instance fields
.field final synthetic this$0:Lcom/htc/util/phone/PhoneUtils;


# direct methods
.method private constructor <init>(Lcom/htc/util/phone/PhoneUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/util/phone/PhoneUtils$Intents;->this$0:Lcom/htc/util/phone/PhoneUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
