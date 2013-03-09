.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
.super Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisterRequest"
.end annotation


# instance fields
.field mDeveloperId:Ljava/lang/String;

.field mExtraParams:Ljava/util/Map;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "appPackage"
    .parameter "developerId"
    .parameter "extraParams"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mDeveloperId:Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mExtraParams:Ljava/util/Map;

    .line 221
    return-void
.end method
