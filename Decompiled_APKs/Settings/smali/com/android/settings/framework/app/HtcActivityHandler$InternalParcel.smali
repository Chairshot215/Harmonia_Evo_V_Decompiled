.class Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalParcel"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field preference:Lcom/htc/preference/HtcPreference;

.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter
    .parameter "preference"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->preference:Lcom/htc/preference/HtcPreference;

    .line 240
    return-void
.end method
