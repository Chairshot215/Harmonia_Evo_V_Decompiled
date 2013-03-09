.class public Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;
.super Ljava/lang/Object;
.source "HtcRemoteMethodInvocator.java"


# static fields
.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "extra_class_name"

.field public static final EXTRA_EXECUTION_TIME:Ljava/lang/String; = "extra_execution_time"

.field public static final EXTRA_METHOD_NAME:Ljava/lang/String; = "extra_method_name"

.field public static final EXTRA_REQUEST_CODE:Ljava/lang/String; = "extra_request_code"

.field public static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "extra_response_code"

.field public static final EXTRA_RUNTIME_EXCEPTION:Ljava/lang/String; = "extra_runtime_exception"

.field public static final EXTRA_TRAGET_ACTION:Ljava/lang/String; = "extra_target_action"

.field public static final EXTRA_TRAGET_CLASS:Ljava/lang/String; = "extra_target_class"

.field public static final EXTRA_TRAGET_PACKAGE:Ljava/lang/String; = "extra_target_package"

.field private static final TAG:Ljava/lang/String; = "RMI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final dump(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 327
    const-string v3, "RMI"

    const-string v4, ">> --------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "RMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v3, "RMI"

    const-string v4, "input parameters:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    .local v2, value:Ljava/lang/Object;
    const-string v3, "RMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;
    :cond_0
    const-string v3, "RMI"

    const-string v4, "output results:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 342
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 345
    .restart local v2       #value:Ljava/lang/Object;
    const-string v3, "RMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    const-string v3, "RMI"

    const-string v4, "<< --------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private static isValid(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    const-string v3, "com.android.settings.request.INVOCATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "extra_class_name"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const-string v3, "extra_method_name"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, methodName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v6, "RMI"

    const-string v7, "The context should not be null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->isValid(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    invoke-static {p0, p1}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->responseErrors(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    .local v2, input:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v3, output:Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v0, 0x0

    .line 93
    .local v0, endTime:J
    if-nez v2, :cond_2

    .line 94
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #input:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 102
    .restart local v2       #input:Landroid/os/Bundle;
    :cond_2
    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->request(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->response(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static final request(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 170
    const-string v7, "extra_class_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, className:Ljava/lang/String;
    const-string v7, "extra_method_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, methodName:Ljava/lang/String;
    const-string v7, "extra_class_name"

    invoke-virtual {p2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "extra_method_name"

    invoke-virtual {p2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v7, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->cacheClassTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;

    .line 183
    .local v2, callback:Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v2, p0, v6, p1, p2}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;->request(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 230
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v7, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->classTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 191
    .local v1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 192
    const-string v7, "RMI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find the class name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 202
    .local v5, instance:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;

    if-eqz v7, :cond_2

    .line 203
    move-object v0, v5

    check-cast v0, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;

    move-object v2, v0

    .line 206
    sget-object v7, Lcom/android/settings/framework/app/rmi/HtcRmiRegisterTable;->cacheClassTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v2, p0, v6, p1, p2}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;->request(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 223
    .end local v5           #instance:Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 224
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 225
    const-string v7, "RMI"

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    .restart local v5       #instance:Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v4, e:Ljava/lang/StringBuilder;
    const-string v7, "The class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v7, " should implement the common interface "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-class v7, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v7, Ljava/lang/IllegalAccessException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .end local v4           #e:Ljava/lang/StringBuilder;
    .end local v5           #instance:Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 227
    .local v4, e:Ljava/lang/InstantiationException;
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 228
    const-string v7, "RMI"

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final response(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 240
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v2, newIntent:Landroid/content/Intent;
    const-string v5, "extra_request_code"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 248
    .local v4, requestCode:Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 249
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 250
    const-string v5, "extra_response_code"

    check-cast v4, Ljava/lang/String;

    .end local v4           #requestCode:Ljava/lang/Object;
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 272
    const-string v5, "extra_target_action"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, action:Ljava/lang/String;
    const-string v5, "extra_target_package"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "extra_target_class"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, className:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 278
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void

    .line 251
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .restart local v4       #requestCode:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 252
    const-string v5, "extra_response_code"

    check-cast v4, Ljava/lang/Integer;

    .end local v4           #requestCode:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    .restart local v4       #requestCode:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 254
    const-string v5, "extra_response_code"

    check-cast v4, Ljava/lang/Long;

    .end local v4           #requestCode:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 256
    .restart local v4       #requestCode:Ljava/lang/Object;
    :cond_3
    const-string v5, "extra_response_code"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_4
    const-string v5, "extra_response_code"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 282
    .end local v4           #requestCode:Ljava/lang/Object;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.settings.request.INVOCATION_RESULTS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static final responseErrors(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    const-string v1, "The RMI data is invalid."

    .line 308
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "com.android.settings.request.INVOCATION_RESULTS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    const-string v2, "extra_runtime_exception"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    return-void
.end method
