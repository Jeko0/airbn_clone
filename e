
[1mFrom:[0m /home/unisens/airbnbclone/app/controllers/api/users_controller.rb:16 Api::UsersController#show:

     [1;34m7[0m: [32mdef[0m [1;34mshow[0m
     [1;34m8[0m:   user = [1;34;4mUser[0m.find(params[[33m:id[0m])
     [1;34m9[0m: 
    [1;34m10[0m:   respond_to [32mdo[0m |format|
    [1;34m11[0m:     format.json [32mdo[0m
    [1;34m12[0m:       render [35mjson[0m: user.to_json, [35mstatus[0m: [33m:ok[0m
    [1;34m13[0m:     [32mend[0m
    [1;34m14[0m:   [32mend[0m
    [1;34m15[0m: [32mrescue[0m [1;34;4mActiveRecord[0m::[1;34;4mRecordNotFound[0m => e
 => [1;34m16[0m:   binding.pry
    [1;34m17[0m:   respond_to [32mdo[0m |format|
    [1;34m18[0m:     format.json [32mdo[0m
    [1;34m19[0m:       render [35mjson[0m: { [35merror[0m: e.message }.to_json, [35mstatus[0m: [33m:unprocessable_entity[0m
    [1;34m20[0m:     [32mend[0m
    [1;34m21[0m:   [32mend[0m
    [1;34m22[0m: [32mend[0m

