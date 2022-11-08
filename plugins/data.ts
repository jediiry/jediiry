import { Context } from "@nuxt/types";
export default (context: Context, inject: any) => {
  const allTechnologies: any = [
    {
      technology: "Python",
      description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, placeat ut fugit
      voluptate unde. Illo delectus expedita maiores quidem assumenda 
      amet voluptate culpa, eveniet sint, et mollitia`,
    },
    {
      technology: "Javascript",
      description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, placeat ut fugit
      voluptate unde. Illo delectus expedita maiores quidem assumenda 
      amet voluptate culpa, eveniet sint, et mollitia`,
    },
    {
      technology: "Golang",
      description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, placeat ut fugit
      voluptate unde. Illo delectus expedita maiores quidem assumenda 
      amet voluptate culpa, eveniet sint, et mollitia`,
    },
  ];

  inject("allTechnologies", allTechnologies);
};
