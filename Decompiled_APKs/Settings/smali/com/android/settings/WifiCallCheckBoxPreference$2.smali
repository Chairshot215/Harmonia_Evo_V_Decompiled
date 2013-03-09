.class Lcom/android/settings/WifiCallCheckBoxPreference$2;
.super Ljava/lang/Thread;
.source "WifiCallCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

.field final synthetic val$register:Z


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallCheckBoxPreference;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    iput-boolean p2, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->val$register:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 207
    const/4 v3, 0x3

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 208
    .local v2, param:[Ljava/lang/Object;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 209
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPStateListener:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$100(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, field:Ljava/lang/reflect/Field;
    iget-boolean v3, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->val$register:Z

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPUtils:Ljava/lang/Class;
    invoke-static {v3}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$200(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "LISTEN_EVENT_WIFICALL_STATUS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 216
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    iget-object v3, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMlisten:Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$400(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMInstance:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$300(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #param:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 221
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v2       #param:[Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPUtils:Ljava/lang/Class;
    invoke-static {v3}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$200(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "LISTEN_EVENT_NONE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 222
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 223
    iget-object v3, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMlisten:Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$400(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$2;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mIPMInstance:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$300(Lcom/android/settings/WifiCallCheckBoxPreference;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #param:[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WifiCallCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register IPStateListener failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
