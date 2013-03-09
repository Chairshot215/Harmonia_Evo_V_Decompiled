.class Lcom/awox/jHTCMediaServerManager/jHTCMediaServerManagerJNI;
.super Ljava/lang/Object;
.source "jHTCMediaServerManagerJNI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native HTCMediaServerManager_GetFriendlyName(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Ljava/lang/String;
.end method

.method public static final native HTCMediaServerManager_IsMusicShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z
.end method

.method public static final native HTCMediaServerManager_IsPictureShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z
.end method

.method public static final native HTCMediaServerManager_IsVideoShareEnable(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;)Z
.end method

.method public static final native HTCMediaServerManager_SetFriendlyName(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;Ljava/lang/String;)Z
.end method

.method public static final native HTCMediaServerManager_SetMediaTypeShared(JLcom/awox/jHTCMediaServerManager/HTCMediaServerManager;ZZZ)V
.end method

.method public static final native delete_HTCMediaServerManager(J)V
.end method

.method public static final native new_HTCMediaServerManager()J
.end method
